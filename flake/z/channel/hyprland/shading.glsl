#version 320 es
precision mediump float;
uniform sampler2D tex;
out vec4 fragcolor;
in vec2 v_texcoord;

const float r = +1.0 * (+16.0 / +16.0);
const float g = +1.0 * (+12.0 / +16.0);
const float b = +1.0 * ( +4.0 / +16.0);

void main () {
  vec4 color = texture (tex, v_texcoord);

  color.rgb = color.rgb * vec3 (
    r,
    g,
    b
  );

  fragcolor = color;
}
