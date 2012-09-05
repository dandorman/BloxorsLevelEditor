#
#  Tile.rb
#  BloxorsLevelEditor
#
#  Created by Dan Dorman on 10/28/11.
#  Copyright 2011 Alliance Health. All rights reserved.
#


class Tile < NSImageView
    SIZE = 32.0
    
    class << self
        def images
            @images ||= image_names.inject({}) do |hash, (key, (basename, extension))|
                path = NSBundle.mainBundle.pathForResource(basename, ofType:extension)
                image = NSImage.alloc.initWithContentsOfFile(path)
                hash.merge(key => image)
            end
        end
    
        private
    
        def image_names
            {
                :empty  => ["space_tile", "png"],
                :normal => ["brick_tile", "png"]
            }
        end
    end

    def initAtX(x, andY: y, withState: state)
        initWithFrame(CGRectMake(x, y, SIZE, SIZE))
        self.state = state
    end

    def state=(state)
        setImage(self.class.images[state])
    end

    def mouseDown(event)
        NSLog("sentinel")
        super
    end
end