import QtQuick 2.4
import QtQuick.Controls 2.2

// обработчики нажатия галочки в CheckBox
SideBarForm
{
    checkPurple.onClicked:
    {
        changecolor = "#483D8B"
        changerect = "#6A6AAD"
        checkBlack.checked = false
        checkGreen.checked = false
        checkRed.checked = false
    }
    checkGreen.onClicked:
    {
        changecolor = "#2F4F4F"
        changerect = "#508080"
        checkBlack.checked = false
        checkRed.checked = false
        checkPurple.checked = false
    }
    checkRed.onClicked:
    {
        changecolor = "#800000"
        changerect = "#A52A2A"
        checkBlack.checked = false
        checkGreen.checked = false
        checkPurple.checked = false
    }
    checkBlack.onClicked:
    {
        changecolor = "#000000"
        changerect = "#3a3a3a"
        checkRed.checked = false
        checkGreen.checked = false
        checkPurple.checked = false
    }
}
