#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFontDatabase>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QFontDatabase::addApplicationFont(":/FontAwesome/fa-solid-900.ttf");
    QFontDatabase::addApplicationFont(":/FontAwesome/fa-regular-400.ttf");
    QFontDatabase::addApplicationFont(":/FontAwesome/fa-brands-400.ttf");

    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:///");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
