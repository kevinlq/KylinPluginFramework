#ifndef KWIDGET_H
#define KWIDGET_H

#include <QWidget>

#include <Kpf/Kpf.h>

class KWidget : public QWidget
{
    Q_OBJECT
    KPF_SUBEVENT(TestEvent, testEvent)
public:
    explicit KWidget(QWidget *parent = nullptr);

    Q_SLOT bool init(const QDomElement& config);

    Q_SLOT QString testEvent(QString text);

};

KPF_REGISTER(KWidget)

#endif // KWIDGET_H
