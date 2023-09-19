<?php 

namespace Model;

/**
 * course lecture model
 */
class Dict extends Model
{
	
	public $errors = [];
	protected $table = "dict";

	protected $allowedColumns = [
		'kaz',
		'rus',
		'en'
		 
	];

	


}