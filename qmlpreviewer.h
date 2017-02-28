#ifndef QMLPREVIEWER_H
#define QMLPREVIEWER_H

#include <QFileSystemWatcher>
#include <QObject>
#include <QQuickItem>
#include <QQuickView>
#include <QGuiApplication>
#include <QTimer>
#include <QMutex>

class QmlPreviewer : public QObject
{
    Q_OBJECT
public:
    explicit QmlPreviewer(QGuiApplication &app);
    bool show();
    int exec();
public slots:
    void reload();
    void setQrcPaths(QVariant qrcPaths);
private:
    QFileSystemWatcher m_watcher;
    QQuickView m_view;
    QQuickItem *m_rootItem = nullptr;
    QString m_binPath;
    QVariantList m_qrcPaths;
    QObject *m_object = nullptr;
    QString m_prefix = "/qtqmlpreview";
    QGuiApplication &m_app;
    QTimer m_timer;
    bool m_reloadRequested = false;
};

#endif // QMLPREVIEWER_H
