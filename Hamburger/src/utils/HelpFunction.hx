package utils;

/**
 * ...
 * @author Joaquin
 */
class HelpFunction
{

	public function new() 
	{
		
	}
	public static function clear(aArray:Array<Dynamic>){
        #if (cpp||php)
           aArray.splice(0,aArray.length);           
        #else
           untyped aArray.length = 0;
        #end
    }
	
}