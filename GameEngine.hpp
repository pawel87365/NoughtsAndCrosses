#ifndef GAME_ENGINE_HPP
#define GAME_ENGINE_HPP

#include <QObject>
#include <QDebug>
#include <QMap>

class GameEngine : public QObject
{
	
Q_OBJECT

	Q_PROPERTY(QString picture READ picture WRITE setPicture NOTIFY pictureChanged)	

	Q_PROPERTY(QString winner READ getWinnerName)	

	enum GameState
	{
		Empty = 0,
		Cross	,
		Circle
	};

public slots:

	void slotPlayerMoved(const int aRow, const int aColumn);

public:

	explicit GameEngine(QObject *parent=0);

	QString picture() const;

	void setPicture(const QString &color);

	const QString getWinnerName() const;

signals:

	void pictureChanged();

private:	

	GameState getWining() const;

	QString theNextPicture;

	QString theWinnerName;

	GameState theCurrentMove;

	enum
	{
		MATRIX_SIZE = 3
	};

	int theMap[MATRIX_SIZE][MATRIX_SIZE];

	QMap<int, QString> thePicutresMap;

}; // GameEngine


#endif // GAME_ENGINE_HPP
