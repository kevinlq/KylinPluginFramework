#include "KImageView.h"

KImageView::KImageView(QWidget *parent)
    :QWidget(parent)
{
    qWarning () <<" init kimage view";
}

KImageView::~KImageView()
{
}

bool KImageView::init(const QDomElement &config)
{
    Q_UNUSED(config);
    qInfo() << "KImageView: initialized at thread" << QThread::currentThread()
            << ", it's belonging thread is" << thread()
            << ", main thread is" << qApp->thread();

    return true;
}

void KImageView::logInfoOut()
{
    qWarning () <<" logInfoOut " << QThread::currentThread();
}
