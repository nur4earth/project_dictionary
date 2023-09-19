<?php 

namespace Model;

/**
 * course lecture model
 */
class Ubt_course_all extends Model
{
	
	public $errors = [];
	protected $table = "ubt_course_all";

	protected $allowedColumns = [
		'name',
		'chapter',
		 
	];


}