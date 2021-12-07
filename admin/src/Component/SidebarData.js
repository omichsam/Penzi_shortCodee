import React from 'react';
import * as FaIcons from 'react-icons/fa';
import * as AiIcons from 'react-icons/ai';
import * as IoIcons from 'react-icons/io';

export const SidebarData = [
  {
    title: 'Dashboard',
    path: '/',
    icon: <AiIcons.AiFillHome />,
    cName: 'nav-text'
  },
  // {
  //   title: 'Users',
  //   path: '/reports',
  //   icon:  <IoIcons.IoMdPeople />,
  //   cName: 'nav-text'
  // },
  {
    title: 'Users',
    path: '/users',
    icon:  <IoIcons.IoMdPeople />,
    cName: 'nav-text'
  },
  {
    title: 'Messages',
    path: '/messages',
    icon: <AiIcons.AiTwotoneMail/>,
    cName: 'nav-text'
  },
  {
    title: 'Match-Pref',
    path: '/match-pref',
    icon: <FaIcons.FaHeartBroken />,
    cName: 'nav-text'
  },
  {
    title: 'Match-Logs',
    path: '/match-log',
    icon: <IoIcons.IoIosStarOutline/>,
    cName: 'nav-text'
  }
];
