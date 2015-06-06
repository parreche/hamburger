package gamepad;

/**
 * 
 * This interface is used for implementing severtal gampads.
 * Everyone of them should implement up, down, left and rigth movements.
 * 
 * @author Arreche-Piaggio
 * 
 */
interface PlayerInput 
{
	function up():Bool;
	function down():Bool;
	function left():Bool;
	function right():Bool;
}