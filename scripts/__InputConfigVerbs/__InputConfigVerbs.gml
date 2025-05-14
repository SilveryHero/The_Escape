function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        //Add your own verbs here!
        UP,
        DOWN,
        LEFT,
        RIGHT,
        ACCEPT,
        RESTART,
        ACTION,
        QUIT,
		CHANGE,
		DEBUG,
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
    }
    
    if (not INPUT_ON_SWITCH)
    {
        InputDefineVerb(INPUT_VERB.UP,      "up",          [vk_up,    "W"],    [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.DOWN,    "down",        [vk_down,  "S"],    [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.LEFT,    "left",        [vk_left,  "A"],    [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.RIGHT,   "right",       [vk_right, "D"],    [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.ACCEPT,  "accept",       vk_enter,            gp_face1);
        InputDefineVerb(INPUT_VERB.RESTART, "restart",      vk_backspace,        gp_face2);
        InputDefineVerb(INPUT_VERB.ACTION,  "action",       vk_space,            gp_face3);
        InputDefineVerb(INPUT_VERB.QUIT,    "quit",         vk_escape,           gp_start);
		InputDefineVerb(INPUT_VERB.CHANGE,  "change",       vk_control,          gp_start);
		InputDefineVerb(INPUT_VERB.DEBUG,   "debug",        vk_home,            gp_start);
    }
    else //Flip A/B over on Switch
    {
        InputDefineVerb(INPUT_VERB.UP,      "up",       undefined, [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.DOWN,    "down",     undefined, [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.LEFT,    "left",     undefined, [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.RIGHT,   "right",    undefined, [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.ACCEPT,  "accept",   undefined,   gp_face2); // !!
        InputDefineVerb(INPUT_VERB.RESTART, "restart",  undefined,   gp_face1); // !!
        InputDefineVerb(INPUT_VERB.ACTION,  "action",   undefined,   gp_face3);
        InputDefineVerb(INPUT_VERB.QUIT,    "quit",     undefined,   gp_start);
		InputDefineVerb(INPUT_VERB.CHANGE,  "change",   undefined,   gp_select);
		InputDefineVerb(INPUT_VERB.DEBUG,   "debug",    undefined,   gp_stickr);
    }
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION, INPUT_VERB.UP, INPUT_VERB.RIGHT, INPUT_VERB.DOWN, INPUT_VERB.LEFT);
}