varying float vElevation;
varying vec3 vNormal;
uniform float uColorChange;

void main(){
    vec4 c1=vec4(.8667,0.,1.,1.);
    vec4 c2=vec4(.949,.4431,.9843,1.);

    vec4 c3=vec4(0.851, 1.0, 0.0, 1.0);
    vec4 c4=vec4(1.0, 0.9765, 0.5451, 1.0);

    float v=smoothstep(-.14,.14,vElevation);
    vec4 colorPink=mix(c1,c2,v);
    vec4 colorYellow=mix(c3,c4,v);

    vec4 final=mix(colorPink,colorYellow,uColorChange);

    gl_FragColor=final;
}
