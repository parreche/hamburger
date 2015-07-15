package src.utils;

import flixel.util.FlxSave;
import flixel.FlxState;
import openfl.utils.Object;
import gameplay.HighScore;
import utils.MenuHelper;
/**
 * ...
 * @author tomas
 */
class DBHelper
{
	public static inline var mDBName = "HamburgerDB";
	
	public static function getLastName():String
	{
		var save:FlxSave = new FlxSave();
		save.bind(mDBName);
		var name:String = " ";
		if (save.data.name != null) 
		{
			name = save.data.name; 
		}
		save.close();
		return name;
	}
	
	public static function getHighScore():Int
	{
		var save:FlxSave = new FlxSave();
		save.bind(mDBName);
		if (save.data.hiscore == null)
		{
			return 0;
		}
		save.data.hiscore.sort( function(a:Object, b:Object):Int
		{
			if (a.mScore < b.mScore) return 1;
			if (a.mScore > b.mScore) return -1;
			return 0;
		} );
		var highScore:Int = save.data.hiscore[0].mScore;
		save.close();
		return highScore;
	}
	
	public static function updateHighScore(aScore:Int, aTime:Int, aName:String):Int
	{
		var hiScore:Int = aScore + aTime*30;
		var save:FlxSave = new FlxSave();
		save.bind(mDBName);
		save.data.name = aName;
		if (save.data.hiscore == null)
		{
			save.data.hiscore = new Array();
			save.data.hiscore.push(new HighScore(hiScore, aName));
			save.data.hiscore.push(new HighScore(0, " "));
			save.data.hiscore.push(new HighScore(0, " "));
			save.data.hiscore.push(new HighScore(0, " "));
			save.data.hiscore.push(new HighScore(0, " "));
		} else {
			var remove:Bool = true;
			for (i in 0...save.data.hiscore.length) {
				if (save.data.hiscore[i].mScore < hiScore && remove) {
					save.data.hiscore.pop();
					save.data.hiscore.push(new HighScore(hiScore, aName));
					remove = false;
				}
			}
		}
		save.data.hiscore.sort( function(a:Object, b:Object):Int
		{
			if (a.mScore < b.mScore) return 1;
			if (a.mScore > b.mScore) return -1;
			return 0;
		} );
		hiScore = save.data.hiscore[0].mScore;
		save.close();
		return hiScore;
	}
	
	public static function showHighScores(aState:FlxState, aNameX:Int, aScoreX:Int, aY:Int, aSpace:Int, aSize:Int):Void
	{
		var save:FlxSave = new FlxSave();
		save.bind(mDBName);
		if (save.data.hiscore != null)
		{
			for (i in 0...5) {
				if (save.data.hiscore[i].mScore > 0) {
					aState.add(MenuHelper.generateMenuText(aNameX, aY + i*aSpace, save.data.hiscore[i].mName, aSize));
					aState.add(MenuHelper.generateMenuText(aScoreX, aY + i*aSpace, save.data.hiscore[i].mScore, aSize));
				}
			}
		}
		save.close();
	}
	
}