const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#121213", /* black   */
  [1] = "#813768", /* red     */
  [2] = "#89403b", /* green   */
  [3] = "#97414e", /* yellow  */
  [4] = "#a04476", /* blue    */
  [5] = "#b34f5b", /* magenta */
  [6] = "#c16e70", /* cyan    */
  [7] = "#c2a6b8", /* white   */

  /* 8 bright colors */
  [8]  = "#877480",  /* black   */
  [9]  = "#813768",  /* red     */
  [10] = "#89403b", /* green   */
  [11] = "#97414e", /* yellow  */
  [12] = "#a04476", /* blue    */
  [13] = "#b34f5b", /* magenta */
  [14] = "#c16e70", /* cyan    */
  [15] = "#c2a6b8", /* white   */

  /* special colors */
  [256] = "#121213", /* background */
  [257] = "#c2a6b8", /* foreground */
  [258] = "#c2a6b8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
