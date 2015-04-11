/****************************************************************************
**
** Copyright (C) 2013 Digia Plc and/or its subsidiary(-ies).
** Contact: http://www.qt-project.org/legal
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of Digia Plc and its Subsidiary(-ies) nor the names
**     of its contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Rectangle
{	
    width: 400
    height: 530

	Rectangle 
	{
		x: 0
		y: 450		
		width: 200
		height: 20
		color: "gray"

		Text 
		{
			font.family: "Helvetica"
			font.pointSize: 14
			color: "white"
			anchors.centerIn: parent
			text: "The winner is:"
			
		}
	}

	Rectangle 
	{
		x: 200
		y: 450		
		width: 200
		height: 20
		color: "gray"

		Text 
		{
			id: winnerText
			font.family: "Helvetica"
			font.pointSize: 14
			color: "white"
			anchors.centerIn: parent
			text: ""
			
		}
	}
	
				
    Grid
    {
		//borderColor: "red"
        x: 0
        y: 0
        columns: 3
        rows: 3
        spacing: 5		
		
        Rectangle 
		{ 			
			objectName: "rect1"
			id: rect1
            color: "steelblue";
			width: 130; 
			height: 130;									

			Image 
			{
                id: image1
				width: 130; height: 100
				fillMode: Image.PreserveAspectFit
				smooth: true
                //source: "cro.png"
			}				
			
			///get mouse control
			MouseArea
			{
				anchors.fill: parent; hoverEnabled: true				
				onClicked: 
				{
                    _myClass.slotPlayerMoved(0, 0)
                    image1.source = _myClass.picture
					winnerText.text = _myClass.winner;
				}
			}			
		}
		
        Rectangle 
		{ 
            color: "steelblue"; width: 130; height: 130			

			Image 
			{
                id: image2
				width: 130; height: 100
				fillMode: Image.PreserveAspectFit
				smooth: true
			}		
			
			///get mouse control
			MouseArea
			{
				anchors.fill: parent; hoverEnabled: true				
				onClicked: 
				{
					_myClass.slotPlayerMoved(0, 1)
					image2.source = _myClass.picture
					winnerText.text = _myClass.winner;
				}
			}							
		}
				
        Rectangle 
		{ 
            color: "steelblue"; width: 130; height: 130			

			Image 
			{
                id: image3
				width: 130; height: 100
				fillMode: Image.PreserveAspectFit
				smooth: true
			}		
			
			///get mouse control
			MouseArea
			{
				anchors.fill: parent; hoverEnabled: true				
				onClicked: 
				{
					_myClass.slotPlayerMoved(0, 2)
					image3.source = _myClass.picture
					winnerText.text = _myClass.winner;
				}
			}							
		}
		
        Rectangle 
		{ 
            color: "steelblue"; width: 130; height: 130			

			Image 
			{
                id: image4
				width: 130; height: 100
				fillMode: Image.PreserveAspectFit
				smooth: true
			}		
			
			///get mouse control
			MouseArea
			{
				anchors.fill: parent; hoverEnabled: true				
				onClicked: 
				{
					_myClass.slotPlayerMoved(1, 0)
					image4.source = _myClass.picture
					winnerText.text = _myClass.winner;
				}
			}							
		}		

        Rectangle 
		{ 
            color: "steelblue"; width: 130; height: 130			

			Image 
			{
                id: image5
				width: 130; height: 100
				fillMode: Image.PreserveAspectFit
				smooth: true
			}		
			
			///get mouse control
			MouseArea
			{
				anchors.fill: parent; hoverEnabled: true				
				onClicked: 
				{
					_myClass.slotPlayerMoved(1, 1)
					image5.source = _myClass.picture
					winnerText.text = _myClass.winner;
				}
			}							
		}		

        Rectangle 
		{ 
            color: "steelblue"; width: 130; height: 130			

			Image 
			{
                id: image6
				width: 130; height: 100
				fillMode: Image.PreserveAspectFit
				smooth: true
			}		
			
			///get mouse control
			MouseArea
			{
				anchors.fill: parent; hoverEnabled: true				
				onClicked: 
				{
					_myClass.slotPlayerMoved(1, 2)
					image6.source = _myClass.picture
					winnerText.text = _myClass.winner;
				}
			}							
		}				
		
        Rectangle 
		{ 
            color: "steelblue"; width: 130; height: 130			

			Image 
			{
                id: image7
				width: 130; height: 100
				fillMode: Image.PreserveAspectFit
				smooth: true
			}		
			
			///get mouse control
			MouseArea
			{
				anchors.fill: parent; hoverEnabled: true				
				onClicked: 
				{
					_myClass.slotPlayerMoved(2, 0)
					image7.source = _myClass.picture
					winnerText.text = _myClass.winner;
				}
			}							
		}						
		
        Rectangle 
		{ 
            color: "steelblue"; width: 130; height: 130			

			Image 
			{
                id: image8
				width: 130; height: 100
				fillMode: Image.PreserveAspectFit
				smooth: true
			}		
			
			///get mouse control
			MouseArea
			{
				anchors.fill: parent; hoverEnabled: true				
				onClicked: 
				{
					_myClass.slotPlayerMoved(2, 1)
					image8.source = _myClass.picture
					winnerText.text = _myClass.winner;
				}
			}							
		}								
		
        Rectangle 
		{ 
            color: "steelblue"; width: 130; height: 130			

			Image 
			{
                id: image9
				width: 130; height: 100
				fillMode: Image.PreserveAspectFit
				smooth: true
			}		
			
			///get mouse control
			MouseArea
			{
				anchors.fill: parent; hoverEnabled: true				
				onClicked: 
				{
					_myClass.slotPlayerMoved(2, 2)
					image9.source = _myClass.picture
					winnerText.text = _myClass.winner;
				}
			}							
		}											
		
/*		Button
		{
			id: winnerText
			x: 0
			y: 407
			text: "Button"
		}

		Button
		{
			id: button2
			x: 325
			y: 407
			text: "Button"
		}
		*/
	}
}

/*
Rectangle
{
    color: "red"; width: 130; height: 130

	///get mouse control
    MouseArea
    {
		anchors.fill: parent
		hoverEnabled: true
        property string buttonID

        acceptedButtons: Qt.AllButtons

        onPressed:
        {
			if (mouse.button == Qt.LeftButton)
            buttonID = 'LeftButton'

            winnerText.text = buttonID;
        }

	}
}
*/

/*Rectangle
{	
    width: 400
    height: 430
    color: back

    Grid
    {
        x: 0
        y: 0
        columns: 3
        rows: 3
        spacing: 5

        Rectangle
        {
            color: "red"; width: 130; height: 130

            ///get mouse control
            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: true
                property string buttonID

                acceptedButtons: Qt.AllButtons

                onPressed:
                {
                    if (mouse.button == Qt.LeftButton)
                        buttonID = 'LeftButton'

                    winnerText.text = buttonID;
                }

            }
        }
        Rectangle { color: "steelblue"; width: 130; height: 130 }
        Rectangle { color: "blue"; width: 130; height: 130 }
        Rectangle { color: "cyan"; width: 130; height: 130}
        Rectangle { color: "magenta"; width: 130; height: 130}
        Rectangle { color: "red"; width: 130; height: 130 }
        Rectangle { color: "steelblue"; width: 130; height: 130 }
        Rectangle { color: "blue"; width: 130; height: 130 }
        Rectangle { color: "cyan"; width: 130; height: 130}
    }


    Button
    {
        id: winnerText
        x: 0
        y: 407
        text: "Button"
    }

    Button
    {
        id: button2
        x: 325
        y: 407
        text: "Button"
    }
}
*/
