require 'opal'
require 'opal-jquery'

Document.ready? do
  a = 0
  b = 0
  menu = Element.find '.menu'
  menu.on :click do
    text = Element.find '.pls'
    buttons = Element.find '.menuitems'
    menu_thingy = Element.find '.click_for_menu'
    menu_boxes = Element.find '.menubox2, .menubox3, .menubox4'
    menu_thingy.hide('slow')
    if b == 0
      buttons.show('slow')
      Document.find(menu_boxes).animate({height: '80%', width: '80%'})
      menu_thingy.hide('fast')
      menu_boxes.show('fast')
      menu.animate({height: 40, width: 600, backgroundColor: 'orange',  speed: 1600})
      b = 1
    else
      menu.animate({height: 20, width: 50, backgroundColor: 'lightblue', speed: 1600})
      buttons.hide("slow")
      menu_thingy.show('slow')
      menu_boxes.hide('fast')
      b = 0
    end
  end
end
