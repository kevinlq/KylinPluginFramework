#ifndef KIMAGEVIEW_H
#define KIMAGEVIEW_H

#include <Kpf/Kpf.h>
#include <QWidget>

#if defined(KIMAGEVIEW_LIBRARY)
#  define KIMAGEVIEW_EXPORT Q_DECL_EXPORT
#else
#  define KIMAGEVIEW_EXPORT Q_DECL_IMPORT
#endif

class KIMAGEVIEW_EXPORT KImageView : public QWidget
{
    Q_OBJECT
public:
    KImageView(QWidget*parent = 0);
    ~KImageView();

    Q_SLOT bool init(const QDomElement& config);

public Q_SLOTS:
    void logInfoOut();

};

KPF_REGISTER(KImageView)

#endif // KIMAGEVIEW_H
