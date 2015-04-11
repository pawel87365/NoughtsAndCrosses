#include <QGuiApplication>

#include <qqmlengine.h>
#include <qqmlcontext.h>
#include <qqml.h>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>

#include "GameEngine.hpp"

int main(int argc, char ** argv)
{
    QGuiApplication app(argc, argv);

    //QList<QObject*> dataList;
    //dataList.append(new GameEngine("Item 1", "red"));
    //dataList.append(new GameEngine("Item 2", "green"));
    //dataList.append(new GameEngine("Item 3", "blue"));

    QQuickView view(QUrl("qrc:view.qml"));
    view.setResizeMode(QQuickView::SizeRootObjectToView);

    QQmlContext *ctxt = view.rootContext();
	
	GameEngine dataObject;
	ctxt->setContextProperty("_myClass", &dataObject);

	GameEngine dataObject2;
	ctxt->setContextProperty("_myClass2", &dataObject2);



    view.show();

    return app.exec();
}

