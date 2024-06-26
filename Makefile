# When releasing a version, bump the version for the buildpack and update the builder with it.
# Then publish the buildpack and then the builder.
# e.g.
# $ make version=0.0.1 publish_buildpack
# $ make version=0.0.1 publish_builder

publish_buildpack:
	pack buildpack package fabiofalci/copy_native_lib_buildpack:$(version) --config buildpack-copy-native-lib/package.toml --publish

publish_builder:
	pack builder create fabiofalci/copy_native_lib_builder:$(version) --config builder-copy-native-lib/builder.toml --publish
