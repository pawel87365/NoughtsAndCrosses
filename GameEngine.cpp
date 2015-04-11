#include <QDebug>
#include "GameEngine.hpp"


static const QString CIRCLE("circle.png");
static const QString CROSS("cross1.png");

GameEngine::GameEngine(QObject *parent)
	: 
QObject(parent),
	theWinnerName(),
	theNextPicture()	
{
	for(int i = 0; i < MATRIX_SIZE; i++)
		for(int j = 0; j < MATRIX_SIZE; j++)
			theMap[i][j] = Empty;

	thePicutresMap[Empty] = QString();
	thePicutresMap[Cross] = CIRCLE;
	thePicutresMap[Circle] = CROSS;
}

QString GameEngine::picture() const
{
	return theNextPicture;
}

void GameEngine::setPicture(const QString &picutre)
{
	if (picutre != theNextPicture) 
	{
		theNextPicture = picutre;
		emit pictureChanged();
	}
}

void GameEngine::slotPlayerMoved(const int aRow, const int aColumn)
{

	/// someone won a game - can not play again
	if(GameState::Empty != getWining())
		return;

	qDebug () << Q_FUNC_INFO << aRow << aColumn;

	if(aRow > MATRIX_SIZE || aColumn > MATRIX_SIZE)
	{
		Q_ASSERT(NULL);
		return;
	}

	if(theMap[aRow][aColumn] != Empty)
	{
		// do nothing	
	}
	else if(Circle == theCurrentMove)
	{
		theCurrentMove = Cross;	
		theMap[aRow][aColumn] = Cross;
	}
	else
	{
		theCurrentMove = Circle;
		theMap[aRow][aColumn] = Circle;
	}

	theNextPicture = thePicutresMap[theMap[aRow][aColumn]];

	theWinnerName = getWinnerName();
}

GameEngine::GameState GameEngine::getWining() const
{
	/// rows
	if((theMap[0][0] == theMap[0][1]) && (theMap[0][0] == theMap[0][2]))
		return static_cast<GameEngine::GameState>(theMap[0][1]);

	if((theMap[1][0] == theMap[1][1]) && (theMap[1][0] == theMap[1][2]))
		return static_cast<GameEngine::GameState>(theMap[1][0]);			

	if((theMap[2][0] == theMap[2][1]) && (theMap[2][0] == theMap[2][2]))
		return static_cast<GameEngine::GameState>(theMap[2][0]);			

	/// columns
	if((theMap[0][0] == theMap[1][0]) && (theMap[0][0] == theMap[2][0]))
		return static_cast<GameEngine::GameState>(theMap[0][0]);

	if((theMap[0][1] == theMap[1][1]) && (theMap[0][1] == theMap[2][1]))
		return static_cast<GameEngine::GameState>(theMap[0][1]);

	if((theMap[0][2] == theMap[1][2]) && (theMap[0][2] == theMap[2][2]))
		return static_cast<GameEngine::GameState>(theMap[0][2]);			


	/// crosses
	if((theMap[0][0] == theMap[1][1]) && (theMap[0][0] == theMap[2][2]))
		return static_cast<GameEngine::GameState>(theMap[0][0]);			

	if((theMap[0][2] == theMap[1][1]) && (theMap[0][2] == theMap[2][0]))
		return static_cast<GameEngine::GameState>(theMap[0][2]);			

	return Empty;
}

const QString GameEngine::getWinnerName() const
{
	GameEngine::GameState winner = getWining();

	if(Empty == winner)
		return QString("");
	else if(Circle == winner)
		return QString("Player 1");
	else if(Cross == winner)
		return QString("Player 2");
	else
		Q_ASSERT(NULL);

	return QString();
}
