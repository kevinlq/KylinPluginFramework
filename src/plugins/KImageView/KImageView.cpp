#include "KImageView.h"

KImageView::KImageView(QObject *parent)
    :QObject(parent)
{
    qWarning () <<" init kimage view";
}

KImageView::~KImageView()
{
}

void KImageView::logInfoOut()
{
    qWarning () <<" logInfoOut " << QThread::currentThread();
}
