#
#  AppDelegate.rb
#  BloxorsLevelEditor
#
#  Created by Dan Dorman on 10/14/11.
#  Copyright 2011 Alliance Health. All rights reserved.
#

class AppDelegate
    attr_accessor :window
    
    COLUMN_COUNT = 15
    ROW_COUNT = 10
    
    def applicationDidFinishLaunching(a_notification)
        # Insert code here to initialize your application
        
        @level = Level.new(ROW_COUNT, COLUMN_COUNT)
        
        originX, originY = 0.0, window.contentView.frame.size.height
        
        ROW_COUNT.times do |row_index|
            COLUMN_COUNT.times do |column_index|
                image_view = Tile.alloc.initAtX(originX + column_index * Tile::SIZE, andY:                                                     originY - (1 + row_index) * Tile::SIZE, withState: :empty)
                window.contentView.addSubview(image_view)
            end
        end
        
        button = ExportButton.alloc.initWithFrame(CGRectMake(0.0, 0.0, 100.0, 20.0), andLevel:@level)
        button.setTitle("export")
        button.setTarget(button)
        window.contentView.addSubview(button)
    end
    
    def mouseDown(event)
        NSLog("AppDelegate sentinel")
    end
    
    def windowWillClose(sender); exit; end
end