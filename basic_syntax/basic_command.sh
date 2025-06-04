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

# 특정 commit ID로의 전환,
git checkout 커밋ID
# 특정 branch로의 전환,
git checkout 브랜치명


# pull은 원격변경사항을 local로 내려받는 것(fetch+merge)
git fetch origin main
# fetch는 변경사항을 local로 가져오되, 병합은 하지 않는 것
git fetch --all
# 버전별(commit간) 비교 명령어
git diff A B
git diff commitID1 commitID2
git diff branch1 branch2

# 가장 최신의 커밋 취소
git reset head~1
git reset head^

# 이미 push된 commit사항 되돌리기 (완전한 취소는 아님) commitID생성
git revert 커밋ID

# 작업중인 사항을 임시 저장하는 것
git stash
# 마지막으로 저장한 사항을 꺼내서 적용
git stash pop
# 저장한 작업목록 조회
git stash list
# 저장 목록 전체 삭제
git stash clear


# tag 관련 명령어
# 가장 최신의 commit에 tag가 명시
git tag 태그버전명(v1.0)
# tag release : 코드의 commit, push와 상관없이 별개로 작업진행
git push origin 태그버전명(v1.0)
# 태그 목록조회
git tag

# 브랜치 생성
# 브랜치를 만들 때 반드시 main 브랜치에서 만들어야만 한다!
# 현재 checkout 되어있는 브랜치를 기준으로 새로운 브랜치 생성
git branch 브랜치명

# 새로운 작업 시작 시, main을 최신화 한 후에 main을 기준으로 branch생성
