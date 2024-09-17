//////////////////////////////////
//getting started in SC!//
//////////////////////////////////
/*-----------------------------------------------------------------------------------------------------------------------------------------*/



/////////////////////////////////////
// What is SuperCollider? //
////////////////////////////////////

//SuperCollider is a programming language developed by James McCartney (no relation to Paul) in 1996.

//Released under GNU General Public License

//SC is designed for real time audio, which  makes it great for live performance.





/*-----------------------------------------------------------------------------------------------------------------------------------------*/


////////////////////////////////////////////
//So what does SC sound like?//
////////////////////////////////////////////

// https://www.youtube.com/watch?app=desktop&v=qdHCwx6QSCY

// https://www.youtube.com/watch?v=ZXroGEXSI6Q

// https://www.youtube.com/watch?v=_8ly4H5gdfM&list=PLvN9ljUgCOLhx2pYozud7rTaZOddwtgMK&index=3








/*-----------------------------------------------------------------------------------------------------------------------------------------*/


///////////////////////////////
//How does SC work://
///////////////////////////////


// SC is made up of three components SClang, SCsynth, SCide,

//SClang is the language

//SCsynth is the real time audio server

//SCide is the editor (with great and readily available documentation). It is what I am writing in right now!





/*-----------------------------------------------------------------------------------------------------------------------------------------*/



//////////////////////////////////////
//before we make sound....//
//////////////////////////////////////



/* Important syntactical things to note:

this is a single line comment: //

this is a multiline comment: /* */

global variables are any single lowercase letter ie "x" or "y", otherwise you must designate them with a ~. ie ~myGlobalVar

cmd + d  is a the shortcut to look something up in the documentation, this is your best friend!

cmd + . kills all nodes on a server

cmd + b boots the server


*/

//how is SC code executed?

// an individual line is executed with shift + enter
// a block is executed with cmd + enter

"hello world".postln;

~helloworld = "hello world";

(
~helloworld.postln;
~helloworld.scramble.postln;
)



//Important server options I have at the beginning of all my code.

ServerOptions.outDevices;
ServerOptions.inDevices;

(
Server.default.options.numOutputBusChannels = (4);
Server.default.options.numInputBusChannels =(8);
Server.default.options.outDevice_("ΜacBook Pro Speakers");
Server.default.options.inDevice_("Blackhole 16ch ");
s.reboot;
)

//UGens?

/*
UGens are unit generators. UGens operate calculations on the client side, and allow us to interact with the server. UGens return UGens

UGens are always followed by .ar, .kr, .ir

ar = Audio Rate

kr = Control Rate (not sure why it is with a k)

ir = initial rate ( really only used for setting server options such as sample rate)
*/

//making our first sound!


//the hello world of supercollider!
{SinOsc.ar(440)}.play;



//Annoying sound? how do we stop it. Easiest way is command period.


// we created this sound and sent it to the server, and now we no longer can access or change it, so how do we do that?

/////////////////////////
/////SynthDefs!/////
////////////////////////


