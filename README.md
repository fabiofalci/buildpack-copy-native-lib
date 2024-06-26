This builder/buildpack is based on `paketobuildpacks/builder-jammy-base:latest` but copies all the *.so files produced by the java native buildpack to the runtime image. 

Current java native buildpack isn't doing that https://github.com/paketo-buildpacks/native-image/issues/308

```
...
[INFO]     [creator]      /layers/paketo-buildpacks_native-image/native-image/libawt.so (jdk_library)
[INFO]     [creator]      /layers/paketo-buildpacks_native-image/native-image/libawt_headless.so (jdk_library)
[INFO]     [creator]      /layers/paketo-buildpacks_native-image/native-image/libawt_xawt.so (jdk_library)
[INFO]     [creator]      /layers/paketo-buildpacks_native-image/native-image/libfontmanager.so (jdk_library)
[INFO]     [creator]      /layers/paketo-buildpacks_native-image/native-image/libfreetype.so (jdk_library)
[INFO]     [creator]      /layers/paketo-buildpacks_native-image/native-image/libjava.so (jdk_library_shim)
[INFO]     [creator]      /layers/paketo-buildpacks_native-image/native-image/libjavajpeg.so (jdk_library)
[INFO]     [creator]      /layers/paketo-buildpacks_native-image/native-image/libjvm.so (jdk_library_shim)
[INFO]     [creator]      /layers/paketo-buildpacks_native-image/native-image/liblcms.so (jdk_library)
...
```

Current version: `fabiofalci/copy_native_lib_builder:0.0.1`

