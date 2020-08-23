import 'package:flutter/material.dart';
import 'story_brain.dart';

// TODO : 15 단계-앱을 실행하고 첫 번째 스토리의 화면 업데이트를 볼 수 있는지 확인합니다. 예상 한대로이 TODO를 삭제하십시오.

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

// TODO : 9 단계-StoryBrain 클래스에서 새 storyBrain 개체를 만듭니다.
StoryBrain storyBrain = StoryBrain();// 잘모르겠음


class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'),fit: BoxFit.cover)
        ),
// TODO : 1 단계-이 컨테이너에 background.png를 배경 이미지로 추가합니다.
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    // TODO : 10 단계-storyBrain을 사용하여 첫 번째 스토리 제목을 가져 와서이 텍스트 위젯에 표시합니다
                    storyBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    setState(() {
                      storyBrain.nextStory(1);
                    });

                    // TODO : 18 단계-storyBrain에서 nextStory () 메서드를 호출하고 사용자가 선택한대로 숫자 1을 전달합니다.
                  },
                  color: Colors.red,
                  child: Text(
                    // TODO : 13 단계-storyBrain을 사용하여 선택 1의 텍스트를 가져옵니다.
                    storyBrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                // TODO : 26 단계-Flutter Visibility Widget을 사용하여이 FlatButton을 래핑합니다.
                // TODO : 28 단계-Visibility Widget의 "visible"속성을 storyBrain의 buttonShouldBeVisible () 메서드의 출력과 동일하게 설정합니다.
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(2);
                    });
                    //Choice 2 made by user.
                // TODO : 19 단계-storyBrain에서 nextStory () 메서드를 호출하고 사용자가 선택한대로 숫자 2를 전달합니다.
                  },
                  color: Colors.blue,
                  child: Text(
                    // TODO : 14 단계-storyBrain을 사용하여 선택 2의 텍스트를 가져옵니다.
                    storyBrain.getChoice2(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO : 24 단계-앱을 실행하고 선택 버튼을 누를 때 스토리를 변경하기 위해이 파일에 추가해야하는 코드를 파악합니다.

// TODO : 29 단계-앱을 실행하고 Story Outline에 대해 테스트하여 모든 단계를 완료했는지 확인합니다. 완성 된 앱의 코드는 https://github.com/londonappbrewery/destini-challenge-completed/에서 찾을 수 있습니다.
