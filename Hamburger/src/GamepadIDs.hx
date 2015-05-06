package;

import flixel.input.gamepad.PS4ButtonID;
import flixel.input.gamepad.OUYAButtonID;
import flixel.input.gamepad.XboxButtonID;
/**
 * ...
 * @author Arreche-Piaggio
 */
class GamepadIDs
{
	public static inline var LEFT_ANALOGUE = #if (OUYA) OUYAButtonID.LEFT_ANALOGUE #else XboxButtonID.LEFT_ANALOGUE #end;
	public static inline var RIGHT_ANALOGUE = #if (OUYA) OUYAButtonID.RIGHT_ANALOGUE #else XboxButtonID.RIGHT_ANALOGUE #end;
	public static inline var LEFT_ANALOGUE_X = #if (OUYA) OUYAButtonID.LEFT_ANALOGUE_X #else XboxButtonID.LEFT_ANALOGUE_X #end;
	public static inline var LEFT_ANALOGUE_Y = #if (OUYA) OUYAButtonID.LEFT_ANALOGUE_Y #else XboxButtonID.LEFT_ANALOGUE_Y #end;
	public static inline var RIGHT_ANALOGUE_X = #if (OUYA) OUYAButtonID.RIGHT_ANALOGUE_X #else XboxButtonID.RIGHT_ANALOGUE_X #end;
	public static inline var RIGHT_ANALOGUE_Y = #if (OUYA) OUYAButtonID.RIGHT_ANALOGUE_Y #else XboxButtonID.RIGHT_ANALOGUE_Y #end;
	
}