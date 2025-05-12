package glad;

@:keep
@:unreflective
@:include('glad/glad.h')
#if !display
@:build(linc.Linc.touch())
#end
extern class GLAD
{
    @:native('GLVersion')
    static var glVersion : GladGLVersionStruct;

    @:native('gladLoadGL')
    static function gladLoadGL() : Int;

    @:native('gladLoadGLLoader')
    static function gladLoadGLLoader(_proc : cpp.Callable<cpp.ConstCharStar->cpp.Star<cpp.Void>>) : Int;

    @:native('gladLoadGLES2Loader')
    static function gladLoadGLES2Loader(_proc : cpp.Callable<cpp.ConstCharStar->cpp.Star<cpp.Void>>) : Int;
}

@:keep
@:unreflective
@:include('glad/glad.h')
@:native('gladGLVersionStruct')
extern class GladGLVersionStruct
{
    var major : Int;
    var minor : Int;
}