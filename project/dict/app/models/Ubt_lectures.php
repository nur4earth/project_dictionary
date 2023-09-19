<?php 

namespace Model;

/**
 * course lecture model
 */
class Ubt_lectures extends Model
{
	
	public $errors = [];
	protected $table = "ubt_lectures";

	protected $allowedColumns = [
		'uid',
		'video',
		'lecture',
		 
	];


}