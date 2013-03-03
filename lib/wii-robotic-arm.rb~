#!/usr/bin/env ruby

# file: wii-robotic-arm.rb

require 'robotic-arm' 
require 'simple_wiimote'

class WiiRoboticArm < SimpleWiimote
  
  def initialize()
    super()
    @ra = RoboticArm.new
    @played = nil
    @terminator = ['home']
  end

  protected

  def on_btn_plus_press(wm)   @ra.led.on        end
  def on_btn_minus_press(wm)  @ra.led.off       end
    
  def on_btn_1_press(wm)
    @ra.recording.method(@ra.recording? ? :stop : :start).call
  end
  
  def on_btn_2_press(wm)
    if @played != :reverse then
      puts 'playing in reverse'
      @ra.recording.reverse_play
      @played = :reverse
    else
      puts 'playing forward'
      @ra.recording.playback
      @played = :played
    end
  end
  
  def on_btn_left_down(wm)    @ra.gripper.open  end
  def on_btn_left_up(wm)      @ra.gripper.stop  end
  def on_btn_right_down(wm)   @ra.gripper.close end
  def on_btn_right_up(wm)     @ra.gripper.stop  end

  def on_btn_up_down(wm)
    if @ra.wrist.moving? != :up then
      @ra.wrist.up 
    end
  end

  def on_btn_up_up(wm)  @ra.wrist.stop end

  def on_btn_down_down(wm)
    if @ra.wrist.moving? != :down then
      @ra.wrist.down 
    end
  end

  def on_btn_down_up(wm)  @ra.wrist.stop end

  def on_btn_a_down(wm)

    x,y = wm.acc

    if x < 110 and @ra.base.moving? != :left then
      @ra.base.left
    elsif x > 130 and @ra.base.moving? != :right then
      @ra.base.right
    end

    if y < 117 and @ra.shoulder.moving? != :up then
      @ra.shoulder.up
    elsif y > 127 and @ra.shoulder.moving? != :down then
      @ra.shoulder.down
    end

  end

  def on_btn_a_up(wm)
    @ra.base.stop
    @ra.shoulder.stop
  end

  def on_btn_b_down(wm)

    x,y = wm.acc

    if x < 110 and @ra.base.moving? != :left then
      @ra.base.left
    elsif x > 130 and @ra.base.moving? != :right then
      @ra.base.right
    end

    if y < 117 and @ra.elbow.moving? != :up then
      @ra.elbow.up
    elsif y > 127 and @ra.elbow.moving? != :down then
      @ra.elbow.down
    end

  end

  def on_btn_b_up(wm)
    @ra.base.stop
    @ra.elbow.stop
  end

end

if __FILE__ == $0 then
  wra = WiiRoboticArm.new
  wra.activate
end
