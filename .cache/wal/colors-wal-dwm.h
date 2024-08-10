static const char norm_fg[] = "#c2a6b8";
static const char norm_bg[] = "#121213";
static const char norm_border[] = "#877480";

static const char sel_fg[] = "#c2a6b8";
static const char sel_bg[] = "#89403b";
static const char sel_border[] = "#c2a6b8";

static const char urg_fg[] = "#c2a6b8";
static const char urg_bg[] = "#813768";
static const char urg_border[] = "#813768";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
