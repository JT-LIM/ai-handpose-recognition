.PHONY: preview deploy

preview:
	python3 -m http.server 8000 --bind 127.0.0.1

deploy:
	@test "$$(git branch --show-current)" = "main" || { echo "main 브랜치에서 배포하세요."; exit 1; }
	@test -z "$$(git status --porcelain)" || { echo "변경 파일을 먼저 커밋하세요."; exit 1; }
	git push origin main
