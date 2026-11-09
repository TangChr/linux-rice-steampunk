#define C_LINE 0
#define BAR_WIDTH 10
#define BAR_GAP 5
#define BAR_OUTLINE_WIDTH 1

#define AMPLIFY 250
#define USE_ALPHA 1
#define GRADIENT 100

#define COLOR mix(#B45F32, #F3C17A, clamp(d / GRADIENT, 0, 1))
#define BAR_OUTLINE vec4(COLOR.rgb * 0.55, COLOR.a)
#define DIRECTION 0

#define INVERT 0
#define FLIP 0
#define MIRROR_YX 0
#define DISABLE_MONO 0
