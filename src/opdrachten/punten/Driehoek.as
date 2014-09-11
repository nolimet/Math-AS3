package opdrachten.punten 

{
	import flash.display.Sprite;
	import flash.events.Event;
	import Wis.Punt;
	import Wis.Rooster;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Driehoek extends Sprite
		{
		
			public var rooster:Rooster = new Rooster;
			public var A:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var B:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var C:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var D:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var E:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var F:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var G:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var H:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var I:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var J:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var K:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var L:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var M:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var N:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var O:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var P:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var Q:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var R:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var S:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var T:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var U:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var W:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var V:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var X:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var Y:Punt = new Punt(400, 400, 15, 0x000000, true);
			public var Z:Punt = new Punt(400, 400, 15, 0x000000, true);
		
		public function Driehoek() 
		{
			addChild(rooster);
			addChild(A);
			addChild(B);
			addChild(C);
			addChild(D);
			addChild(E);
			addChild(F);
			addChild(G);
			addChild(H);
			addChild(I);
			addChild(J);
			addChild(K);
			addChild(L);
			addChild(M);
			addChild(N);
			addChild(O);
			addChild(P);
			addChild(Q);
			addChild(R);
			addChild(S);
			addChild(T);
			addChild(U);
			addChild(W);
			addChild(V);
			addChild(X);
			addChild(Y);
			addChild(Z);
			
			rooster.alpha = 0.4;
			A.alpha = 0.7;
			B.alpha = 0.7;
			C.alpha = 0.7;
			D.alpha = 0.7;
			E.alpha = 0.7;
			F.alpha = 0.7;
			G.alpha = 0.7;
			H.alpha = 0.7;
			I.alpha = 0.7;
			J.alpha = 0.7;
			K.alpha = 0.7;
			L.alpha = 0.7;
			M.alpha = 0.7;
			N.alpha = 0.7;
			O.alpha = 0.7;
			P.alpha = 0.7;
			Q.alpha = 0.7;
			R.alpha = 0.7;
			S.alpha = 0.7;
			T.alpha = 0.7;
			U.alpha = 0.7;
			W.alpha = 0.7;
			V.alpha = 0.7;
			X.alpha = 0.7;
			Y.alpha = 0.7;
			Z.alpha = 0.7;
			
			addEventListener(Event.ENTER_FRAME, loop);
			
		}
		private function loop(e:Event) {
			this.graphics.clear();
			this.graphics.lineStyle(4);
			this.graphics.beginFill(0xffff00);
			this.graphics.moveTo(A.x, A.y);
			this.graphics.lineTo(A.x, A.y);
			this.graphics.lineTo(B.x, B.y);
			this.graphics.lineTo(C.x, C.y);
			this.graphics.lineTo(D.x, D.y);
			this.graphics.lineTo(E.x, E.y);
			this.graphics.lineTo(F.x, F.y);
			this.graphics.lineTo(G.x, G.y);
			this.graphics.lineTo(H.x, H.y);
			this.graphics.lineTo(I.x, I.y);
			this.graphics.lineTo(J.x, J.y);
			this.graphics.lineTo(K.x, K.y);
			this.graphics.lineTo(L.x, L.y);
			this.graphics.lineTo(M.x, M.y);
			this.graphics.lineTo(N.x, N.y);
			this.graphics.lineTo(O.x, O.y);
			this.graphics.lineTo(P.x, P.y);
			this.graphics.lineTo(R.x, R.y);
			this.graphics.lineTo(Q.x, Q.y);
			this.graphics.lineTo(S.x, S.y);
			this.graphics.lineTo(T.x, T.y);
			this.graphics.lineTo(U.x, U.y);
			this.graphics.lineTo(W.x, W.y);
			this.graphics.lineTo(V.x, V.y);
			this.graphics.lineTo(X.x, X.y);
			this.graphics.lineTo(Y.x, Y.y);
			this.graphics.lineTo(Z.x, Z.y);
			
			this.graphics.endFill();
		}
		
	}

}