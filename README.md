# Final

ЧТОБЫ ПРОВЕРИТЬ ВСЕ КОМПОНЕНТЫ - ВЗГЛЯНИТЕ В КЛАСС VIEWCONTROLLER, ОНИ ТАМ ВСЕ СОЗДАНЫ, НУЖНО ТОЛЬКО ВПИСАТЬ НУЖНЫЙ ВАМ.


Usage: 

Class "Title":


fields:

cgRect: CGRect - Your frame to show

opaqucity: CGFloat - Frame opaque

withCross: Bool - Include cross button or not

title: String - Title of frame

desc: String - Description of frame
    
Class "Header":


fields:

cgRect: CGRect - Your frame to show

opaqucity: CGFloat - Frame opaque

header: String - Title of frame

subHeader: String - Description of frame

topButtonText: String - Top button's text

bottomButtonText: String - Bottom button's text

titles: [Title] - Array of Titles class to list

visibilityType: type - Show Titles horizontal or vertical
