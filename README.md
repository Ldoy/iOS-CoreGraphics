# 코어그래픽 구현 순서
## 구현 순서

1. draw내부에서 `컨텍스트` 가져온다. 
2. 크기를 정한다(예 : 버튼의 높이와 가로의 길이를 가져온다. )
3.  버튼의 높이, 가로를 이용해서 `bounds`를 만든다. 
    1. bounds.insetBy
4. 컨텍스트에 그리기 시작할 것이라고 알려준다. path를 그리기 시작하자!
    1. context.beginPath()
    2. 라인두께를 알려준다. setLineWidth()
    3. setStrockColor( ) - 색깔알려주기.
    4. setFillColor( ) - 
    5. addRect(어디에다가? 3번에서 만든거에다가) - 무슨 모양일지 알려줌
5. 나 이제 그릴 꺼야 = drawPath(using: —-)
6. 나 다그렸어요 closePath()

### draw한 것 위에 또 뷰를 그릴 때

1. 자 나 다시 그릴 거야 `.beginPath()`
    1. `setStrokeColor`
    2. `setLineJoin` - 라인끼리 합쳐지는 지점 
    3. `setLineCap` - 라인 끝을 어떻게 마무리 할거냐
2. 붓을 이 위치로 가져가!
    1. context.move(to:  시작 원하는 포인트
    2. context.addLine(to: 라인 그리고 싶은 끝점)
    3. context.addLine(to: ..
    4. 내가 원하는 모양 나올 때 까지 그려라 라고 명령
3. 이제 그려!
    1. context.drawPath(using:  ...)

## 의문점1. 
1. 매번 beginPath, drawPath, closePath를 반복 해주 어야하는가
- No: 시작할 때 한 번(beginPath), 그릴 때 한 번(drawPath) 그리기를 마쳤을 때 한 번 (closePath) 호출 하면 된다. 
