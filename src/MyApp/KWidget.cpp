#include "KWidget.h"

KWidget::KWidget(QWidget *parent) : QWidget(parent)
{
    qWarning () <<"KWidget construct.. ";
}

bool KWidget::init(const QDomElement &config)
{
    qInfo() << "KWidget: initialized at thread" << QThread::currentThread()
            << ",it's belonging thread is" << thread()
            << ", main thread is" << qApp->thread()
            << "config " << config.tagName();

    return true;
}

QString KWidget::testEvent(QString text)
{
    qInfo() << "KWidget: receive testEvent with arg =" << text
            << "invoke thread is" << QThread::currentThread()
            << "it's belonging thread is" << thread()
            << ", main thread is" << qApp->thread();
    return text;
}
