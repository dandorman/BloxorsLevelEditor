#
#  ExportButton.rb
#  BloxorsLevelEditor
#
#  Created by Dan Dorman on 10/14/11.
#  Copyright 2011 Alliance Health. All rights reserved.
#


class ExportButton < NSButton
    def initWithFrame(frame, andLevel: level)
        if initWithFrame(frame)
            @level = level
            self
        end
    end
    
    def mouseDown(event)
        File.open("/tmp/bloxors.txt", "w") { |f| f.puts @level.to_s }
        super
    end
end