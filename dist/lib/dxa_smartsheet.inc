<?php

class SS_Sheet {
	private $key;
	private $sheetId;
	private $rawData = '';
	
	public function __construct( $key, $sheetId ) {
		$this->key = $key;
		$this->sheetId = $sheetId;
		try {
			$this->rawData = json_decode( $this->getRawSheet() );
		} catch( Exception $e ) {
			throw new Exception( $e->getMessage() );
		}
	}
	
	private function getRawSheet() {
		return( $this->fetchEndpoint( 'GET', 'https://api.smartsheet.com/2.0/sheets/'.$this->sheetId, $this->key ) );
	}
	
	public function getRowCount() {
		return( count( $this->rawData->rows ) );
	}
	
	public function getColumns() {
		$columns = [];
		
		foreach( $this->rawData->columns as $column ) {
			$columns[$column->title] = $column->id;
		}
		return( $columns );
	}
	
	public function getRowData() {
	  $data = [];
	  $columns = array_flip( $this->getColumns() );
	  
	  foreach( $this->rawData->rows as $row ) {
	    $record = [];
	    foreach( $row->cells as $cell ) {
	      $columnName = $columns[$cell->columnId];
	      $value = $cell->value ?? '';
	      $record[$columnName] = $value;
	    }
	    $data[] = $record;
	  }
	  
	  return( $data);
	}
	
	public function addRows( $records ) {
		$payload = $this->prepRowPayload( $records );
		return( $this->fetchEndpoint( 'POST', 'https://api.smartsheet.com/2.0/sheets/'.$this->sheetId.'/rows', $this->key, 'application/json', $payload ) );
	}
	
	private function prepRowPayload( $records ) {
		$columns = $this->getColumns();
		$rows = [];
	
		foreach( $records as $record ) {
			$row = new stdClass();
			$row->toBottom = true;
			foreach( $record as $name => $value ) {
				if( !isset( $columns[$name] ) ) {
					throw new Exception( 'DXALib SS_Sheet: prepRowPayload() - Column name '.$name.' not found in sheet' );
				}
				$cell = new stdClass();
				$cell->columnId = $columns[$name];
				$cell->value = $value;
				$row->cells[] = $cell;
			}
			$rows[] = $row;
		}

		return( json_encode( $rows ) );
	}
	
	private function fetchEndpoint( $method = 'GET', $URI, $key, $contentType = '', $payload = '' ) {

		$headers[] = 'Authorization: Bearer '.$key;
		if( $contentType !== '' ) {
			$headers[] = 'Content-type: '.$contentType;
		}
	
		$httpContext = [
			'method' => $method,
			'ignore_errors' => true,
			'header' => implode( "\r\n", $headers )
		];
	
		if( $payload !== '' ) {
			$httpContext['content'] = $payload;
		}
	
		$context = stream_context_create( ['http' => $httpContext] );
		$rawResponse = @file_get_contents( $URI, false, $context );
		if( $rawResponse === false ) {
			throw new Exception( 'DXALib SS_Sheet: Did not get response from Smartsheet endpoint' );
		}
	
		$response = json_decode( $rawResponse );
		if( isset( $response->errorCode ) ) {
			throw new Exception( 'DXALib SS_Sheet: Smartsheet error - '.$response->message );
		}

		return( $rawResponse ); // Return json_encoded raw response from SS
	}
}

class SS_Report {
	private $key;
	private $reportId;
	private $rawData = '';
	
	public function __construct( $key, $reportId ) {
		$this->key = $key;
		$this->reportId = $reportId;
		try {
			$this->rawData = json_decode( $this->getRawReport() );
			//header( 'Content-type: text/plain' );print_r( $this->rawData );exit;
		} catch( Exception $e ) {
			throw new Exception( $e->getMessage() );
		}
	}
	
	private function getRawReport() {
		return( $this->fetchEndpoint( 'GET', 'https://api.smartsheet.com/2.0/reports/'.$this->reportId.'?pageSize=10000', $this->key ) );
	}
	
	public function getRowCount() {
		return( count( $this->rawData->rows ) );
	}
	
	public function getColumns() {
		$columns = [];
		
		foreach( $this->rawData->columns as $column ) {
			$columns[$column->title] = $column->virtualId;
		}
		return( $columns );
	}
	
	public function getRowData() {
	  $data = [];
	  $columns = array_flip( $this->getColumns() );
	  
	  foreach( $this->rawData->rows as $row ) {
	    $record = [];
	    foreach( $row->cells as $cell ) {
	      $columnName = $columns[$cell->virtualColumnId];
	      $value = $cell->value ?? '';
	      $record[$columnName] = $value;
	    }
	    $data[] = $record;
	  }
	  
	  return( $data);
	}
	
	private function fetchEndpoint( $method = 'GET', $URI, $key, $contentType = '', $payload = '' ) {

		$headers[] = 'Authorization: Bearer '.$key;
		if( $contentType !== '' ) {
			$headers[] = 'Content-type: '.$contentType;
		}
	
		$httpContext = [
			'method' => $method,
			'ignore_errors' => true,
			'header' => implode( "\r\n", $headers )
		];
	
		if( $payload !== '' ) {
			$httpContext['content'] = $payload;
		}
	
		$context = stream_context_create( ['http' => $httpContext] );
		$rawResponse = @file_get_contents( $URI, false, $context );
		if( $rawResponse === false ) {
			throw new Exception( 'DXALib SS_Report: Did not get response from Smartsheet endpoint' );
		}
	
		$response = json_decode( $rawResponse );
		if( isset( $response->errorCode ) ) {
			throw new Exception( 'DXALib SS_Report: Smartsheet error - '.$response->message );
		}

		return( $rawResponse ); // Return json_encoded raw response from SS
	}
}

?>