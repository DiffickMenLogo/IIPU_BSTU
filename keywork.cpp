#include "keywork.h"

KeyWork::KeyWork(QObject *parent) : QObject(parent)
{
    capsOn=false;
    numOn=false;
    m_timer=new QTimer();
    m_timer->setInterval(2000);
    connect(m_timer,SIGNAL(timeout()),this,SLOT(m_delay()));
}

void KeyWork::goriAndPogasni()
{
    if(!numOn) SystCom::execute("xdotool key \"Num_Lock\"");
    if(!capsOn) SystCom::execute("xdotool key \"Caps_Lock\"");
    m_timer->start();
}

void KeyWork::getState()
{
    QString resultatic = SystCom::execute("xset -q");
    QString num="Num Lock:",caps="Caps Lock:";
    int i;
    i=resultatic.indexOf(caps);
    capsOn=resultatic.mid(i+caps.length(),7).indexOf("on")>-1?true:false;
    i=resultatic.indexOf(num);
    numOn=resultatic.mid(i+num.length(),7).indexOf("on")>-1?true:false;
}

//
void KeyWork::InversCapsAndNum()
{
    SystCom::execute("xdotool key \"Num_Lock\"");
    SystCom::execute("xdotool key \"Caps_Lock\"");
}

//
//
bool KeyWork::getCaps()
{
    return capsOn;
}

bool KeyWork::getNum()
{
    return numOn;
}

void KeyWork::m_delay()
{
    SystCom::execute("xdotool key \"Num_Lock\"");
    SystCom::execute("xdotool key \"Caps_Lock\"");
    emit m_end();
    m_timer->stop();
}


