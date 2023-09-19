<?php 

namespace Model;

/**
 * course lecture model
 */
class Ubt_course extends Model
{
	
	public $errors = [];
	protected $table = "ubt_course";

	protected $allowedColumns = [
		'name',
		'description',
		'img'
		 
	];

	public function validate($data)
	{
		$this->errors = [];

		$cnt = (int)$data['cnt'];
		$name = $data['name'];
		for($i = 1; $i <= $cnt; $i++) {
			$ind = (string)$i . "q";
			if(empty($data[$ind]))
			{
				$this->errors[$ind] = "A question is required";
			}
			$answer = "";
			$options = array();
			for ($j = 'a'; $j <= 'e'; $j++) {
			$ind1 = (string)$i . $j;
			if(empty($data[$ind1.'2']))
			{
				$this->errors[$ind1.'2'] = "A variant is required";
			}
			
			}
	}


 
		
		if(empty($this->errors))
		{
			return true;
		}

		return false;
	}


}