import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.group.FlxSpriteGroup;
import flixel.FlxState;

class PlayState extends FlxState
{
	final org_size:Int = 32;

	public var organisms:FlxSpriteGroup = new FlxSpriteGroup();

	override function create()
	{
		super.create();

		add(organisms);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.mouse.justPressed)
		{
			makeOrg();
		}
	}

	public function makeOrg()
	{
		var o = new Organism(FlxColor.RED, org_size, FlxG.mouse.x, FlxG.mouse.y);
		organisms.add(o);
	}
}
