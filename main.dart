// Comment
/*
* Multiline
*/

import 'dart:html';
import 'dart:math';

void main() {
  //querySelector("#button").onClick.listen(getSum);

  manipulateHTML();
}

void manipulateHTML() {
  String output = "";

  Element title = querySelector("#sum");
  title.setInnerHtml("Take me to your leader");
  title.style.color = "Blue";
  title.classes.add("titleStyle"); // adds a css class
  output += title.innerHtml + "\n";

  querySelector("#output").text = output;

  Element divBox = querySelector("#box");
  DivElement sampleDiv = new DivElement();
  sampleDiv.text = "I'm a div";
  divBox.children.add(sampleDiv);

  AnchorElement sampleAnchor = new AnchorElement();
  sampleAnchor.text = "Google";
  sampleAnchor.setAttribute("href", "http://google.com");
  sampleAnchor.appendText("is here");
  output += "href of link ${sampleAnchor.getAttribute("href")}\n";
  divBox.children.add(sampleAnchor);
  divBox.children.add(new Element.tag('br'));

  Element inputElement = new InputElement();
  inputElement.attributes['id'] = "inputElement";
  divBox.children.add(inputElement);
  inputElementChange(Event event) =>
      (querySelector("#output").text = output + "Input Changed\n");
  querySelector("#inputElement").onChange.listen(inputElementChange);
}

void getSum(MouseEvent event) {
  int num1 = int.parse((querySelector("#num1") as InputElement).value);
  int num2 = int.parse((querySelector("#num2") as InputElement).value);

  var sum = (num1 + num2).toString();

  querySelector("#sum").text = "$num1 + $num2 = $sum";
}
