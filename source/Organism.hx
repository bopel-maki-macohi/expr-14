import flixel.util.FlxColor;
import flixel.FlxSprite;

class Organism extends FlxSprite
{
	override public function new(color:FlxColor, size:Int, x:Float, y:Float)
	{
		super(x, y);
		makeGraphic(size, size, color);
	}
}
