/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Applet;

import java.applet.Applet;
import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.image.ImageObserver;
import java.text.AttributedCharacterIterator;

/**
 *
 * @author VAIBHAV
 */
public class Hello extends Applet implements Runnable{

    /**
     * Initialization method that will be called after the applet is loaded into
     * the browser.
     */
  /*   int height,width;
    public void init() 
    {
       setBackground(Color.BLACK);
       setForeground(Color.GRAY);
        // TODO start asynchronous download of heavy resources
    } 
    public void paint(Graphics obj)
    {
         
        obj.drawString ("Hello",100, 100);
        //obj.drawRect(100, 100, 100,100);
        obj.fillRect(1,1,300,300);
    }*/
    String str = "This is a simple Banner ";
   Thread t ;
   boolean b;
   public void init() {
      setBackground(Color.gray);
      setForeground(Color.yellow);
   }
   public void start() {
      t = new Thread(this);
      b = false;
      t.start();
   }
   public void run () {
      char ch;
      for( ; ; ) {
      try {
         repaint();
         Thread.sleep(250);
         ch = str.charAt(0);
         str = str.substring(1, str.length());
         str = str + ch;
      }
      catch(InterruptedException e) {}
      }
   }
   public void paint(Graphics g) {
      g.drawRect(1,1,300,150);
      g.setColor(Color.yellow);
      g.fillRect(1,1,300,150);
      g.setColor(Color.red);
      g.drawString(str, 100, 150);
    // TODO overwrite start(), stop() and destroy() methods
   }
}
