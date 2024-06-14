shader_type sky;

uniform vec3 color_top : source_color;
uniform vec3 color_bottom : source_color;
uniform float blend_height : hint_range(0.0, 5.0, 0.01);

void sky() {
    float factor = (EYEDIR.y + 1.0) / 2.0;
    factor = smoothstep(0.0, blend_height, factor);
    COLOR = mix(color_bottom, color_top, factor);
}
