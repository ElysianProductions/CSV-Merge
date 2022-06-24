import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.15

ApplicationWindow {
    id: configuration_page
    visible: true
    width: 640
    height: 480
    title: qsTr("CSV Merge - Configuration")

    Loader {
        id: switch_page
    }

    Material.theme: Material.Dark
    Material.accent: Material.Blue

    GridLayout {
        id: settingsLayout
        columns: 1
        rowSpacing: 10
        Layout.preferredWidth: parent.width

        Pane {
          anchors.left: parent.left
          Material.elevation: 6

          SpinBox {
              id: csvFileCount
              width: 100
              height: 50
              from: 0
              to: 10
              anchors.centerIn: parent
              property int previousValue: csvFileCount.value
              onValueChanged: {
                  if(value > previousValue && previousValue <= 10) {
                      switch(value){
                      case 0: {csvPanePathOne.visible = false; csvFieldPaneOne.visible = false; break;}
                      case 1: {csvPanePathOne.visible = true; csvFieldPaneOne.visible = true; break;}
                      case 2: {csvPanePathTwo.visible = true; csvFieldPaneTwo.visible = true; break;}
                      case 3: {csvPanePathThree.visible = true; csvFieldPaneThree.visible = true; break;}
                      case 4: {csvPanePathFour.visible = true; csvFieldPaneFour.visible = true; break;}
                      case 5: {csvPanePathFive.visible = true; csvFieldPaneFive.visible = true; break;}
                      case 6: {csvPanePathSix.visible = true; csvFieldPaneSix.visible = true; break;}
                      case 7: {csvPanePathSeven.visible = true; csvFieldPaneSeven.visible = true; break;}
                      case 8: {csvPanePathEight.visible = true; csvFieldPaneEight.visible = true; break;}
                      case 9: {csvPanePathNine.visible = true; csvFieldPaneNine.visible = true; break;}
                      case 10: {csvPanePathTen.visible = true; csvFieldPaneTen.visible = true; break;}

                      }
                  }
              }

              ToolTip {
                  id:csvCountTT
                  text: "Input how many files you're working with."
                  parent: csvFileCount
                  visible: csvFileCount.hovered
              }
          }
        }

        GridLayout {
            columns: 2

            Layout.preferredWidth: parent.width

            Pane {
                id: csvPanePathOne
                //width: parent.width
                Material.elevation: 6
                visible: false

                TextArea {
                    id: csvPathOne
                    //width: parent.width
                    text: "Path to first CSV file."
                    wrapMode: Text.WordWrap

                    ToolTip {
                        id: csvPathOneTT
                        text: "Full path to your CSV file."
                        parent: csvPathOne
                        visible: csvPathOne.hovered
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {csvPathOne.text = ""}
                    }
                }
            }

            Pane {
                id: csvFieldPaneOne
                //width: parent.width
                Material.elevation: 6
                visible: false

                TextArea {
                    id: csvFieldsOne
                    //width: parent.width
                    text: "Input csv fields here."
                    wrapMode: Text.WordWrap

                    ToolTip {
                        id: csvFieldsOneTT
                        text: "Input csv fields separated by a comma. Eg, field1,field2,field3"
                        parent: csvFieldsOne
                        visible: csvFieldsOne.hovered
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {csvFieldsOne.text = ""}
                    }
                }
            }

            Pane {
                id: csvPanePathTwo
                //width: parent.width
                Material.elevation: 6
                visible: false

                TextArea {
                    id: csvPathTwo
                    //width: parent.width
                    text: "Path to first CSV file."
                    wrapMode: Text.WordWrap

                    ToolTip {
                        id: csvPathTwoTT
                        text: "Full path to your CSV file."
                        parent: csvPathTwo
                        visible: csvPathTwo.hovered
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {csvPathTwo.text = ""}
                    }
                }
            }

            Pane {
                id: csvFieldPaneTwo
                //width: parent.width
                Material.elevation: 6
                visible: false

                TextArea {
                    id: csvFieldsTwo
                    //width: parent.width
                    text: "Input csv fields here."
                    wrapMode: Text.WordWrap

                    ToolTip {
                        id: csvFieldsTwoTT
                        text: "Input csv fields separated by a comma. Eg, field1,field2,field3"
                        parent: csvFieldsTwo
                        visible: csvFieldsTwo.hovered
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {csvFieldsTwo.text = ""}
                    }
                }
            }

            Pane {
                id: csvPanePathThree
                //width: parent.width
                Material.elevation: 6
                visible: false

                TextArea {
                    id: csvPathThree
                    //width: parent.width
                    text: "Path to first CSV file."
                    wrapMode: Text.WordWrap

                    ToolTip {
                        id: csvPathThreeTT
                        text: "Full path to your CSV file."
                        parent: csvPathThree
                        visible: csvPathThree.hovered
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {csvPathThree.text = ""}
                    }
                }
            }

            Pane {
                id: csvFieldPaneThree
                //width: parent.width
                Material.elevation: 6
                visible: false

                TextArea {
                    id: csvFieldsThree
                    //width: parent.width
                    text: "Input csv fields here."
                    wrapMode: Text.WordWrap

                    ToolTip {
                        id: csvFieldsThreeTT
                        text: "Input csv fields separated by a comma. Eg, field1,field2,field3"
                        parent: csvFieldsThree
                        visible: csvFieldsThree.hovered
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {csvFieldsThree.text = ""}
                    }
                }
            }

            Pane {
                id: csvPanePathFour
                //width: parent.width
                Material.elevation: 6
                visible: false

                TextArea {
                    id: csvPathFour
                    //width: parent.width
                    text: "Path to first CSV file."
                    wrapMode: Text.WordWrap

                    ToolTip {
                        id: csvPathFourTT
                        text: "Full path to your CSV file."
                        parent: csvPathFour
                        visible: csvPathFour.hovered
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {csvPathFour.text = ""}
                    }
                }
            }

            Pane {
                id: csvFieldPaneFour
                //width: parent.width
                Material.elevation: 6
                visible: false

                TextArea {
                    id: csvFieldsFour
                    //width: parent.width
                    text: "Input csv fields here."
                    wrapMode: Text.WordWrap

                    ToolTip {
                        id: csvFieldsFourTT
                        text: "Input csv fields separated by a comma. Eg, field1,field2,field3"
                        parent: csvFieldsFour
                        visible: csvFieldsFour.hovered
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {csvFieldsFour.text = ""}
                    }
                }
            }

            Pane {
                id: csvPanePathFive
                //width: parent.width
                Material.elevation: 6
                visible: false

                TextArea {
                    id: csvPathFive
                    //width: parent.width
                    text: "Path to first CSV file."
                    wrapMode: Text.WordWrap

                    ToolTip {
                        id: csvPathFiveTT
                        text: "Full path to your CSV file."
                        parent: csvPathFive
                        visible: csvPathFive.hovered
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {csvPathFive.text = ""}
                    }
                }
            }

            Pane {
                id: csvFieldPaneFive
                //width: parent.width
                Material.elevation: 6
                visible: false

                TextArea {
                    id: csvFieldsFive
                    //width: parent.width
                    text: "Input csv fields here."
                    wrapMode: Text.WordWrap

                    ToolTip {
                        id: csvFieldsFiveTT
                        text: "Input csv fields separated by a comma. Eg, field1,field2,field3"
                        parent: csvFieldsFive
                        visible: csvFieldsFive.hovered
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {csvFieldsFive.text = ""}
                    }
                }
            }





































        }

    }
}
