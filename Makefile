build-pkg:
	rm -rf ./build && \
	rm -rf ./dist && \
	rm -rf ./telemetry_manager.egg-info && \
	poetry update && \
	poetry build && \
	python setup.py sdist bdist_wheel && \
	twine upload dist/*
