//
//  main.m
//  BloxorsLevelEditor
//
//  Created by Dan Dorman on 10/14/11.
//  Copyright (c) 2011 Alliance Health. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
