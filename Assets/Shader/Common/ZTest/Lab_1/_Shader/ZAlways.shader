Shader "Tut/Shader/Common/ZAlways" {
Properties {
    _MainTex ("Base (RGB) Trans (A)", 2D) = "white" {}
}
SubShader {
	Tags { "RenderType"="Opaque" "Queue"="Geometry+300"}
	pass{
		ZTest Always
		Material{Diffuse(1,1,1,1)}
		Lighting On
		SetTexture[_MainTex]{combine texture*primary}
	}
	}
}

