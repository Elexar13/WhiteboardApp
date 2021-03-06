package com.example.WhiteboardApp;

import pojo.Figure;
import pojo.FigureDecoder;
import pojo.FigureEncoder;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@ServerEndpoint(value="/whiteboardendpoint", encoders = {FigureEncoder.class}, decoders = {FigureDecoder.class})
public class MyWhiteboard {
	private static Set<Session> peers = Collections.synchronizedSet(new HashSet<Session>());

	@OnMessage
	public void broadcastFigure(Figure figure, Session session) throws IOException, EncodeException {
		System.out.println("broadcastFigure: " + figure);
		for (Session peer : peers) {
			if (!peer.equals(session)) {
				peer.getBasicRemote().sendObject(figure);
			}
		}
	}

	@OnOpen
	public void onOpen (Session peer) {
		peers.add(peer);
	}

	@OnClose
	public void onClose (Session peer) {
		peers.remove(peer);
	}

}
