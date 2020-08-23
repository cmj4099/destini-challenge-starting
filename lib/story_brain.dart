import 'story.dart';

// TODO : 6 단계-story.dart 파일을이 파일로 가져옵니다.

// TODO : 5 단계-StoryBrain이라는 새 클래스를 만듭니다.

class StoryBrain{
  List<Story> _storyData = [
    Story(
        storyTitle:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];


  String getStory(){
    return _storyData[_storyNumber].storyTitle;
  }


// TODO : 7 단계-StoryBrain에서 storyData를 개인 속성으로 포함하도록 아래 줄의 주석 처리를 제거합니다. 힌트 :이 작업을 수행하려면 story.dart에서 무언가를 변경해야 할 수도 있습니다.


// TODO : 23 단계-getStory (), getChoice1 () 및 getChoice2 () 내부의 storyNumber 속성을 사용하여 항상 첫 번째 (0 번째) 항목이 아닌 업데이트 된 스토리와 선택 항목을 가져옵니다.

// TODO : 8 단계-_storyData에서 첫 번째 storyTitle을 반환하는 getStory ()라는 메서드를 만듭니다.

// TODO : 11 단계-_storyData에서 첫 번째 선택 1에 대한 텍스트를 반환하는 getChoice1 ()이라는 메서드를 만듭니다.

String getChoice1(){

  return _storyData[_storyNumber].choice1;
}

// TODO : 12 단계-_storyData에서 첫 번째 선택 2에 대한 텍스트를 반환하는 getChoice2 ()라는 메서드를 만듭니다.

  String getChoice2(){

    return _storyData[_storyNumber].choice2;
  }
// TODO : 25 단계-story_brain.dart 만 액세스 할 수 있도록 storyNumber 속성을 개인 속성으로 변경합니다. 이름 (storyNumber)을 마우스 오른쪽 버튼으로 클릭하고 Refactor-> Rename을 선택하여 사용되는 모든 위치에서 변경할 수 있습니다.

// TODO : 16 단계-값 0으로 시작하는 storyNumber라는 속성을 만듭니다. 이것은 사용자가 현재보고있는 스토리를 추적하는 데 사용됩니다.
  int _storyNumber = 0;

// TODO : 17 단계-nextStory ()라는 메서드를 생성합니다. 출력이 없어야하지만  사용자가 만든 선택 번호 (int)가 될 choiceNumber라는 입력이 1 개 있어야합니다. (모르겠음 ㅈㄴ 어렵다)
  void nextStory(int choiceNumber){
if(choiceNumber == 1 &&_storyNumber == 0){
  _storyNumber = 2;
}

  }

// TODO : 20 단계-여기에서 스토리 계획 다운로드 : https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

// TODO : 21 단계-스토리 계획을 사용하여 nextStory ()를 업데이트하여 사용자의 선택에 따라 storyNumber를 변경합니다. 예 : choiceNumber가 1이고 storyNumber가 0이면 storyNumber는 2가되어야합니다.

// TODO : Step 22-nextStory ()에서 storyNumber가 3, 4 또는 5와 같으면 게임이 끝났음을 의미하며 storyNumber를 0으로 재설정하는 restart ()라는 메서드를 호출해야합니다.

// TODO : 27 단계-storyNumber가 0 또는 1 또는 2 (두 버튼 모두 선택 사항을 표시해야하는 경우)인지 확인하고이 경우 true를 반환하고 그렇지 않으면 false를 반환하는 buttonShouldBeVisible ()이라는 메서드를 만듭니다.
}