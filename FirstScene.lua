local composer = require( "composer" )
 
local scene = composer.newScene()
 
----Adding Welcome message
----local function header()
----display.newText("Welcome",display.contentCenterX,display.contentCenterY, "Comic Sans MS", 50)
----end
----header()

local Welcome
local myImage
local myImage2

---- -----------------------------------------------------------------------------------
---- Code outside of the scene event functions below will only be executed ONCE unless
---- the scene is removed entirely (not recycled) via "composer.removeScene()"
---- ------------------------------------------------------------------------------------
 
local function newscene()
  composer.gotoScene("RightsList",{effect = "slideLeft", time = 500})
end
----function to redirect user to complaint file
local function complaintScene()
  composer.gotoScene("Complaint",{effect = "slideLeft", time = 500})
end 
local function microphone()
  composer.gotoScene("Security",{effect = "slideLeft", time = 500})
end 

---- -----------------------------------------------------------------------------------
---- Scene event functions
---- -----------------------------------------------------------------------------------
 
---- create()
function scene:create( event )
 
    local sceneGroup = self.view
	
	----adding background

    local sceneGroup = self.view
	bg=display.newRect(display.contentCenterX,display.contentCenterY,display.contentWidth,display.contentHeight*1.25)
	bg:setFillColor(0.823529 ,0.411765 ,0.117647)
	sceneGroup:insert(bg)

	bg2=display.newRect(display.contentCenterX,display.contentCenterY + 50, display.contentWidth, display.contentHeight)
	bg2:setFillColor(0.35, 0.35, 0.35)
	sceneGroup:insert(bg2)

	bg3=display.newRect(display.contentCenterX, 50 , display.contentWidth, 8)
	sceneGroup:insert(bg3)
	
	----Adding Welcome Message
	Welcome = display.newText("Security App",display.contentCenterX,display.contentCenterY*0.025, "Helvetica", 40)
	sceneGroup:insert(Welcome)
	
	----Displaying Legal Rights Text and icon
	LegalRghts = display.newText(" Your Legal \n    Rights",display.contentCenterX,display.contentCenterY*2.03, "Helvetica", 25)
	sceneGroup:insert(LegalRghts)
	LegalRghts:addEventListener("tap", newscene)
	myImage = display.newImage("contact3.png", display.contentCenterX, display.contentCenterY*1.75 )
	sceneGroup:insert(myImage)
	myImage:addEventListener("tap", newscene)

	----Displaying Complaint icon and text
	complaint = display.newText("  Make a \nComplaint",display.contentCenterX,display.contentCenterY*1.335, "Helvetica", 25)
	sceneGroup:insert(complaint)
	complaint:addEventListener("tap", complaintScene)
	myImage2 = display.newImage("contact6.png", display.contentCenterX, display.contentCenterY*1.05 )
	sceneGroup:insert(myImage2)
	myImage2:addEventListener("tap", complaintScene)
	
	----Displaying security icon and text
	security = display.newText("  Security\nMonitoring",display.contentCenterX,display.contentCenterY*0.7, "Helvetica", 25)
	sceneGroup:insert(security)
	security:addEventListener("tap", microphone)
	myImage3 = display.newImage("contact7.png", display.contentCenterX, display.contentCenterY*0.425)
	sceneGroup:insert(myImage3)
	myImage3:addEventListener("tap", microphone)


	----Adding Timer in this app which display how long a user is seing the app
	----sceneGroup:insert(Timer)
	
end
 
 
---- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        ---- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        ---- Code here runs when the scene is entirely on screen
 
    end
end
 
 
---- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        ---- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        ---- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
---- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    ---- Code here runs prior to the removal of scene's view
 
end
 
---- -----------------------------------------------------------------------------------
---- Scene event function listeners
---- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
---- -----------------------------------------------------------------------------------
 
return scene
