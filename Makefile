
publish_buildpack:
	pack buildpack package fabiofalci/copy_native_lib_buildpack:$(version) --config buildpack-copy-native-lib/buildpack.toml --publish

publish_builder:
	pack builder create fabiofalci/copy_native_lib_builder:$(version) --config builder-copy-native-lib/builder.toml --publish
