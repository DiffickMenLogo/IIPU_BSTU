#ifndef KEYWORK_H
#define KEYWORK_H

#include <QObject>
#include <QDebug>
#include "systcom.h"
#include <QTimer>

class KeyWork : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool capsOn READ getCaps)
    Q_PROPERTY(bool numOn READ getNum)
public:
    explicit KeyWork(QObject *parent = 0);

    Q_INVOKABLE void goriAndPogasni();
    Q_INVOKABLE void getState();
//
    Q_INVOKABLE void InversCapsAndNum();
//
//

    bool getCaps();
    bool getNum();
signals:
    void m_end();

public slots:
    void m_delay();

private:
    bool capsOn;
    bool numOn;
    QTimer* m_timer;

};

#endif // KEYWORK_H
