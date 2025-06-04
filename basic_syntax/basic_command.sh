# 현재 working director, staging area상태 확인
git status

# .은 모든 수정/추가 사항을 add
git add .
# 특정파일만 add할 경우(경로까지 포함)
git add testfolder/test1.txt


# commit을 통해 메시지 타이틀과 메시지내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"
# git commit만 입력하고 엔터시 vi모드 -> 첫줄: 타이틀, 두번째줄: 내용
git commit


# commit 이력 확인
git log
git log --oneline

# 원격저장소로 업로드
git push origin 브랜치명
# 충돌발생시 충돌무시하고, 로컬기준으로 원격에 덮어쓰기
git push origin 브랜치명 --force



# pull은 원겨변경사항을 local로 내려받는 것(fetch+merge)
git fetch origin main
# fetch는 변경사항을 local로 가져오되, 병합은 하지 않는 것
git fetch --all
# 버전별(commit간) 비교 명령어
git diff A B
git diff commitID1 commitID2
git diff branch1 branch2

