<?php 

namespace Model;

/**
 * course lecture model
 */
class Test_name extends Model
{
	
	public $errors = [];
	protected $table = "test_name";

	protected $allowedColumns = [

		'id',
		'cnt',
		'name'
		 
	];

	public function validate($data)
	{
		$this->errors = [];

		if(empty($data['currency']))
		{
			$this->errors['currency'] = "A currency is required";
		}

		if(empty($data['symbol']))
		{
			$this->errors['symbol'] = "A currency symbol is required";
		}

 
		
		if(empty($this->errors))
		{
			return true;
		}

		return false;
	}


}